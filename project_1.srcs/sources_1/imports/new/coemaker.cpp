#include <iostream>
#include <fstream>
#include <vector>
#include <iomanip>
#include <sstream>

using namespace std;

// 将整数转换为16进制字符串（4位宽，补零，字符大写）
string intToHex(uint16_t num) {
    stringstream ss;
    ss << uppercase << hex << setw(4) << setfill('0') << num;
    return ss.str();
}

void mp3ToCoe(const string& srcFile, const string& destFile) {
    // 打开输入文件（MP3文件）
    ifstream inFile(srcFile, ios::binary);
    if (!inFile) {
        cerr << "无法打开输入文件: " << srcFile << endl;
        return;
    }

    // 打开输出文件（COE文件）
    ofstream outFile(destFile);
    if (!outFile) {
        cerr << "无法打开输出文件: " << destFile << endl;
        return;
    }

    // 写入 COE 文件头
    outFile << "memory_initialization_radix=2;" << endl;
    outFile << "memory_initialization_vector=" << endl;

    // 读取文件内容到缓冲区
    vector<unsigned char> dataBuf(istreambuf_iterator<char>(inFile), {});
    size_t fileSize = dataBuf.size();

    // 每行存储8个16进制数（每个数是16位，即2字节）
    string lineBuf;  // 用于存储每一行的16进制数据
    size_t numCount = 0; // 每行16进制数的数量

    for (size_t i = 0; i < fileSize; i += 2) {
        uint16_t curNum = 0;

        // 如果有两个字节，组合成16位；如果只有一个字节，补0
        if (i + 1 < fileSize)
            curNum = (dataBuf[i] << 8) | dataBuf[i + 1];
        else 
            curNum = (dataBuf[i] << 8);

        for (int j = 0; j < 16; j++)
            lineBuf += (((curNum >> (15 - j)) & 0x01) + '0');

        if (i + 2 < fileSize) 
            outFile << lineBuf << "," << endl;
        else
            outFile << lineBuf << ";" << endl; // 最后一行以分号结束
        lineBuf.clear();
    }

    // 如果最后剩余的行不足8个16位数，补零至8个并写入
    if (!lineBuf.empty()) {
        outFile << lineBuf << ";" << endl; // 最后一行以分号结束
    }

    cout << "转换成功，生成文件: " << destFile << endl;
}

int main() {
    string srcFile, destFile;
    
    cout << "请输入源MP3文件名: ";
    cin >> srcFile;
    
    cout << "请输入目标COE文件名: ";
    cin >> destFile;

    mp3ToCoe(srcFile, destFile);

    return 0;
}
