#include <iostream>
#include <fstream>
#include <vector>
#include <iomanip>
#include <sstream>

using namespace std;

// 将整数转换为16进制字符串（4位宽，补零，字符大写）
string toHexString(uint16_t value) {
    stringstream ss;
    ss << uppercase << hex << setw(4) << setfill('0') << value;
    return ss.str();
}

void convertToCoe(const string& inputFile, const string& outputFile) {
    // 打开输入文件（MP3文件）
    ifstream in(inputFile, ios::binary);
    if (!in) {
        cerr << "无法打开输入文件: " << inputFile << endl;
        return;
    }

    // 打开输出文件（COE文件）
    ofstream out(outputFile);
    if (!out) {
        cerr << "无法打开输出文件: " << outputFile << endl;
        return;
    }

    // 写入 COE 文件头
    out << "memory_initialization_radix=2;" << endl;
    out << "memory_initialization_vector=" << endl;

    // 读取文件内容到缓冲区
    vector<unsigned char> buffer(istreambuf_iterator<char>(in), {});
    size_t dataSize = buffer.size();

    // 每行存储8个16进制数（每个数是16位，即2字节）
    string lineBuffer;  // 用于存储每一行的16进制数据
    size_t valueCount = 0; // 每行16进制数的数量

    for (size_t i = 0; i < dataSize; i += 2) {
        uint16_t value = 0;

        // 如果有两个字节，组合成16位；如果只有一个字节，补0
        if (i + 1 < dataSize) {
            value = (buffer[i] << 8) | buffer[i + 1];
        }
        else {
            value = (buffer[i] << 8);
        }

        for (int j = 0; j < 16; j++) {
            lineBuffer += (((value >> (15 - j)) & 0x01) + '0');
        }

        if (i + 2 < dataSize) {
            out << lineBuffer << "," << endl;
        }
        else {
            out << lineBuffer << ";" << endl; // 最后一行以分号结束
        }
        lineBuffer.clear();
    }

    // 如果最后剩余的行不足8个16位数，补零至8个并写入
    if (!lineBuffer.empty()) {
        out << lineBuffer << ";" << endl; // 最后一行以分号结束
    }

    cout << "转换成功，生成文件: " << outputFile << endl;
}

int main() {
    string inputFile = "night.mid";   // 输入文件名（MP3文件）
    string outputFile = "night.coe";  // 输出文件名（COE文件）

    convertToCoe(inputFile, outputFile);

    return 0;
}
