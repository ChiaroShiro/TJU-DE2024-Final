#include <iostream>
#include <fstream>
#include <vector>
#include <iomanip>
#include <sstream>

using namespace std;

// ������ת��Ϊ16�����ַ�����4λ�����㣬�ַ���д��
string toHexString(uint16_t value) {
    stringstream ss;
    ss << uppercase << hex << setw(4) << setfill('0') << value;
    return ss.str();
}

void convertToCoe(const string& inputFile, const string& outputFile) {
    // �������ļ���MP3�ļ���
    ifstream in(inputFile, ios::binary);
    if (!in) {
        cerr << "�޷��������ļ�: " << inputFile << endl;
        return;
    }

    // ������ļ���COE�ļ���
    ofstream out(outputFile);
    if (!out) {
        cerr << "�޷�������ļ�: " << outputFile << endl;
        return;
    }

    // д�� COE �ļ�ͷ
    out << "memory_initialization_radix=2;" << endl;
    out << "memory_initialization_vector=" << endl;

    // ��ȡ�ļ����ݵ�������
    vector<unsigned char> buffer(istreambuf_iterator<char>(in), {});
    size_t dataSize = buffer.size();

    // ÿ�д洢8��16��������ÿ������16λ����2�ֽڣ�
    string lineBuffer;  // ���ڴ洢ÿһ�е�16��������
    size_t valueCount = 0; // ÿ��16������������

    for (size_t i = 0; i < dataSize; i += 2) {
        uint16_t value = 0;

        // ����������ֽڣ���ϳ�16λ�����ֻ��һ���ֽڣ���0
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
            out << lineBuffer << ";" << endl; // ���һ���ԷֺŽ���
        }
        lineBuffer.clear();
    }

    // ������ʣ����в���8��16λ����������8����д��
    if (!lineBuffer.empty()) {
        out << lineBuffer << ";" << endl; // ���һ���ԷֺŽ���
    }

    cout << "ת���ɹ��������ļ�: " << outputFile << endl;
}

int main() {
    string inputFile = "night.mid";   // �����ļ�����MP3�ļ���
    string outputFile = "night.coe";  // ����ļ�����COE�ļ���

    convertToCoe(inputFile, outputFile);

    return 0;
}
