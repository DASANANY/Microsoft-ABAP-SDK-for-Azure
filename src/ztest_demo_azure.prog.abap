*&---------------------------------------------------------------------*
*& Report ZTEST_DEMO_AZURE
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ztest_demo_azure.

CLASS demo DEFINITION.
  PUBLIC SECTION.
    CLASS-METHODS main.
ENDCLASS.

CLASS demo IMPLEMENTATION.
  METHOD main.

    DATA: pack TYPE p DECIMALS 4,
          n    TYPE decfloat16 VALUE '+5.2',
          m    TYPE decfloat16 VALUE '+1.1'.


    pack = n / m.
    cl_demo_output=>write( |{ n } / { m } = { pack }| ).

    pack = n DIV m.
    cl_demo_output=>write( |{ n } DIV { m } = { pack }| ).

    pack = n MOD m.
    cl_demo_output=>display( |{ n } MOD { m } = { pack }| ).

  ENDMETHOD.
ENDCLASS.

START-OF-SELECTION.
  demo=>main( ).
