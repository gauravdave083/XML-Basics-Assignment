# Accelya
bank.xsd
<?xml version="1.0"?>
<xs:schema xmlns:xs="http://www.w3.org/2001/XMLSchema">

  <!-- Reusable type for name -->
  <xs:complexType name="holderType">
    <xs:sequence>
      <xs:element name="firstName" type="xs:string"/>
      <xs:element name="lastName" type="xs:string"/>
    </xs:sequence>
  </xs:complexType>

  <!-- Reusable type for transaction -->
  <xs:complexType name="transactionType">
    <xs:sequence>
      <xs:element name="txnId" type="xs:string"/>
      <xs:element name="type">
        <xs:simpleType>
          <xs:restriction base="xs:string">
            <xs:enumeration value="Credit"/>
            <xs:enumeration value="Debit"/>
          </xs:restriction>
        </xs:simpleType>
      </xs:element>
      <xs:element name="amount" type="xs:decimal"/>
      <xs:element name="date" type="xs:date"/>
    </xs:sequence>
  </xs:complexType>

  <!-- Root element -->
  <xs:element name="bank">
    <xs:complexType>
      <xs:sequence>
        <xs:element name="account" maxOccurs="unbounded">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="holder" type="holderType"/>
              <xs:element name="accountType">
                <xs:simpleType>
                  <xs:restriction base="xs:string">
                    <xs:enumeration value="Savings"/>
                    <xs:enumeration value="Current"/>
                    <xs:enumeration value="FixedDeposit"/>
                  </xs:restriction>
                </xs:simpleType>
              </xs:element>
              <xs:element name="balance" type="xs:decimal"/>
              <xs:element name="transactions" minOccurs="0">
                <xs:complexType>
                  <xs:sequence>
                    <xs:element name="transaction" type="transactionType" maxOccurs="unbounded"/>
                  </xs:sequence>
                </xs:complexType>
              </xs:element>
            </xs:sequence>
            <xs:attribute name="id" type="xs:string" use="required"/>
          </xs:complexType>
        </xs:element>
      </xs:sequence>
    </xs:complexType>
  </xs:element>

</xs:schema>
