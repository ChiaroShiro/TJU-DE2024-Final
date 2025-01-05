#include <iostream>
#include <fstream>
#include <vector>
#include <iomanip>
#include <sstream>

using namespace std;

// ������ת��Ϊ16�����ַ�����4λ�����㣬�ַ���д��
string intToHex(uint16_t num) {
    stringstream ss;
    ss << uppercase << hex << setw(4) << setfill('0') << num;
    return ss.str();
}

void mp3ToCoe(const string& srcFile, const string& destFile) {
    // �������ļ���MP3�ļ���
    ifstream inFile(srcFile, ios::binary);
    if (!inFile) {
        cerr << "�޷��������ļ�: " << srcFile << endl;
        return;
    }

    // ������ļ���COE�ļ���
    ofstream outFile(destFile);
    if (!outFile) {
        cerr << "�޷�������ļ�: " << destFile << endl;
        return;
    }

    // д�� COE �ļ�ͷ
    outFile << "memory_initialization_radix=2;" << endl;
    outFile << "memory_initialization_vector=" << endl;

    // ��ȡ�ļ����ݵ�������
    vector<unsigned char> dataBuf(istreambuf_iterator<char>(inFile), {});
    size_t fileSize = dataBuf.size();

    // ÿ�д洢8��16��������ÿ������16λ����2�ֽڣ�
    string lineBuf;  // ���ڴ洢ÿһ�е�16��������
    size_t numCount = 0; // ÿ��16������������

    for (size_t i = 0; i < fileSize; i += 2) {
        uint16_t curNum = 0;

        // ����������ֽڣ���ϳ�16λ�����ֻ��һ���ֽڣ���0
        if (i + 1 < fileSize)
            curNum = (dataBuf[i] << 8) | dataBuf[i + 1];
        else 
            curNum = (dataBuf[i] << 8);

        for (int j = 0; j < 16; j++)
            lineBuf += (((curNum >> (15 - j)) & 0x01) + '0');

        if (i + 2 < fileSize) 
            outFile << lineBuf << "," << endl;
        else
            outFile << lineBuf << ";" << endl; // ���һ���ԷֺŽ���
        lineBuf.clear();
    }

    // ������ʣ����в���8��16λ����������8����д��
    if (!lineBuf.empty()) {
        outFile << lineBuf << ";" << endl; // ���һ���ԷֺŽ���
    }

    cout << "ת���ɹ��������ļ�: " << destFile << endl;
}

int main() {
    string srcFile, destFile;
    
    cout << "������ԴMP3�ļ���: ";
    cin >> srcFile;
    
    cout << "������Ŀ��COE�ļ���: ";
    cin >> destFile;

    mp3ToCoe(srcFile, destFile);

    return 0;
}
