cwlVersion: v1.0
steps:
  read-potential-cases-i2b2:
    run: read-potential-cases-i2b2.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  renal-disease-charlson-primary-care-chron---primary:
    run: renal-disease-charlson-primary-care-chron---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-i2b2/output
  renal-disease-charlson-primary-care-iridodialysis---primary:
    run: renal-disease-charlson-primary-care-iridodialysis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: renal-disease-charlson-primary-care-chron---primary/output
  renal-disease-charlson-primary-care-nephrit---primary:
    run: renal-disease-charlson-primary-care-nephrit---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: renal-disease-charlson-primary-care-iridodialysis---primary/output
  nephropathy-renal-disease-charlson-primary-care---primary:
    run: nephropathy-renal-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: renal-disease-charlson-primary-care-nephrit---primary/output
  renal-disease-charlson-primary-care-glomerulnephritis---primary:
    run: renal-disease-charlson-primary-care-glomerulnephritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: nephropathy-renal-disease-charlson-primary-care---primary/output
  renal-disease-charlson-primary-care-deposit---primary:
    run: renal-disease-charlson-primary-care-deposit---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: renal-disease-charlson-primary-care-glomerulnephritis---primary/output
  renal-disease-charlson-primary-care-classified---primary:
    run: renal-disease-charlson-primary-care-classified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: renal-disease-charlson-primary-care-deposit---primary/output
  renal-disease-charlson-primary-care-hydronephrosis---primary:
    run: renal-disease-charlson-primary-care-hydronephrosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: renal-disease-charlson-primary-care-classified---primary/output
  renal-disease-charlson-primary-care-membranoprolif---primary:
    run: renal-disease-charlson-primary-care-membranoprolif---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: renal-disease-charlson-primary-care-hydronephrosis---primary/output
  renal-disease-charlson-primary-care-stenosis---primary:
    run: renal-disease-charlson-primary-care-stenosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: renal-disease-charlson-primary-care-membranoprolif---primary/output
  renal-disease-charlson-primary-care-kidney---primary:
    run: renal-disease-charlson-primary-care-kidney---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: renal-disease-charlson-primary-care-stenosis---primary/output
  renal-disease-charlson-primary-care-malaria---primary:
    run: renal-disease-charlson-primary-care-malaria---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: renal-disease-charlson-primary-care-kidney---primary/output
  renal-disease-charlson-primary-care-compensate---primary:
    run: renal-disease-charlson-primary-care-compensate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: renal-disease-charlson-primary-care-malaria---primary/output
  renal-disease-charlson-primary-care-allotransplantation---primary:
    run: renal-disease-charlson-primary-care-allotransplantation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: renal-disease-charlson-primary-care-compensate---primary/output
  renal-disease-charlson-primary-care-pyonephrosis---primary:
    run: renal-disease-charlson-primary-care-pyonephrosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: renal-disease-charlson-primary-care-allotransplantation---primary/output
  renal-disease-charlson-primary-care-haemodialysis---primary:
    run: renal-disease-charlson-primary-care-haemodialysis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: renal-disease-charlson-primary-care-pyonephrosis---primary/output
  renal-disease-charlson-primary-care-morpholog---primary:
    run: renal-disease-charlson-primary-care-morpholog---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: renal-disease-charlson-primary-care-haemodialysis---primary/output
  tuberculous-renal-disease-charlson-primary-care---primary:
    run: tuberculous-renal-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: renal-disease-charlson-primary-care-morpholog---primary/output
  renal-disease-charlson-primary-care---primary:
    run: renal-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: tuberculous-renal-disease-charlson-primary-care---primary/output
  renal-disease-charlson-primary-care-ligation---primary:
    run: renal-disease-charlson-primary-care-ligation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: renal-disease-charlson-primary-care---primary/output
  renal-disease-charlson-primary-care-lesion---primary:
    run: renal-disease-charlson-primary-care-lesion---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: renal-disease-charlson-primary-care-ligation---primary/output
  renal-disease-charlson-primary-care-stage---primary:
    run: renal-disease-charlson-primary-care-stage---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: renal-disease-charlson-primary-care-lesion---primary/output
  renal-disease-charlson-primary-care-function---primary:
    run: renal-disease-charlson-primary-care-function---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: renal-disease-charlson-primary-care-stage---primary/output
  renal-disease-charlson-primary-care-proteinuria---primary:
    run: renal-disease-charlson-primary-care-proteinuria---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: renal-disease-charlson-primary-care-function---primary/output
  medullary-renal-disease-charlson-primary-care---primary:
    run: medullary-renal-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: renal-disease-charlson-primary-care-proteinuria---primary/output
  renal-disease-charlson-primary-care-syndrm---primary:
    run: renal-disease-charlson-primary-care-syndrm---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: medullary-renal-disease-charlson-primary-care---primary/output
  renal-disease-charlson-primary-care-uraemia---primary:
    run: renal-disease-charlson-primary-care-uraemia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: renal-disease-charlson-primary-care-syndrm---primary/output
  renal-disease-charlson-primary-care-failure---primary:
    run: renal-disease-charlson-primary-care-failure---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: renal-disease-charlson-primary-care-uraemia---primary/output
  renal-disease-charlson-primary-care-gouty---primary:
    run: renal-disease-charlson-primary-care-gouty---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: renal-disease-charlson-primary-care-failure---primary/output
  renal-disease-charlson-primary-care-osteodystrophy---primary:
    run: renal-disease-charlson-primary-care-osteodystrophy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: renal-disease-charlson-primary-care-gouty---primary/output
  hypokalaemic-renal-disease-charlson-primary-care---primary:
    run: hypokalaemic-renal-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: renal-disease-charlson-primary-care-osteodystrophy---primary/output
  nephrotic-renal-disease-charlson-primary-care---primary:
    run: nephrotic-renal-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: hypokalaemic-renal-disease-charlson-primary-care---primary/output
  renal-disease-charlson-primary-care-first---primary:
    run: renal-disease-charlson-primary-care-first---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: nephrotic-renal-disease-charlson-primary-care---primary/output
  nephrpthy-renal-disease-charlson-primary-care---primary:
    run: nephrpthy-renal-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: renal-disease-charlson-primary-care-first---primary/output
  renal-disease-charlson-primary-care-dialysis---primary:
    run: renal-disease-charlson-primary-care-dialysis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: nephrpthy-renal-disease-charlson-primary-care---primary/output
  cortical-renal-disease-charlson-primary-care---primary:
    run: cortical-renal-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: renal-disease-charlson-primary-care-dialysis---primary/output
  hypertensive-renal-disease-charlson-primary-care---primary:
    run: hypertensive-renal-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: cortical-renal-disease-charlson-primary-care---primary/output
  renal-disease-charlson-primary-care-heart---primary:
    run: renal-disease-charlson-primary-care-heart---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: hypertensive-renal-disease-charlson-primary-care---primary/output
  renal-disease-charlson-primary-care-level---primary:
    run: renal-disease-charlson-primary-care-level---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: renal-disease-charlson-primary-care-heart---primary/output
  other-renal-disease-charlson-primary-care---primary:
    run: other-renal-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: renal-disease-charlson-primary-care-level---primary/output
  renal-disease-charlson-primary-care-haematuria---primary:
    run: renal-disease-charlson-primary-care-haematuria---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: other-renal-disease-charlson-primary-care---primary/output
  secondary-renal-disease-charlson-primary-care---primary:
    run: secondary-renal-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: renal-disease-charlson-primary-care-haematuria---primary/output
  renal-disease-charlson-primary-care-endocap---primary:
    run: renal-disease-charlson-primary-care-endocap---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: secondary-renal-disease-charlson-primary-care---primary/output
  extracorporeal-renal-disease-charlson-primary-care---primary:
    run: extracorporeal-renal-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: renal-disease-charlson-primary-care-endocap---primary/output
  renal-disease-charlson-primary-care-abnormality---primary:
    run: renal-disease-charlson-primary-care-abnormality---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: extracorporeal-renal-disease-charlson-primary-care---primary/output
  renal-disease-charlson-primary-care-haemorrhage---primary:
    run: renal-disease-charlson-primary-care-haemorrhage---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: renal-disease-charlson-primary-care-abnormality---primary/output
  renal-disease-charlson-primary-care-training---primary:
    run: renal-disease-charlson-primary-care-training---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: renal-disease-charlson-primary-care-haemorrhage---primary/output
  renal-disease-charlson-primary-care-induced---primary:
    run: renal-disease-charlson-primary-care-induced---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: renal-disease-charlson-primary-care-training---primary/output
  renal-disease-charlson-primary-care-letter---primary:
    run: renal-disease-charlson-primary-care-letter---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule50
      potentialCases:
        id: potentialCases
        source: renal-disease-charlson-primary-care-induced---primary/output
  renal-disease-charlson-primary-care-unspecif---primary:
    run: renal-disease-charlson-primary-care-unspecif---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule51
      potentialCases:
        id: potentialCases
        source: renal-disease-charlson-primary-care-letter---primary/output
  anaphylactoid-renal-disease-charlson-primary-care---primary:
    run: anaphylactoid-renal-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule52
      potentialCases:
        id: potentialCases
        source: renal-disease-charlson-primary-care-unspecif---primary/output
  congenital-renal-disease-charlson-primary-care---primary:
    run: congenital-renal-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule53
      potentialCases:
        id: potentialCases
        source: anaphylactoid-renal-disease-charlson-primary-care---primary/output
  hereditary-renal-disease-charlson-primary-care---primary:
    run: hereditary-renal-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule54
      potentialCases:
        id: potentialCases
        source: congenital-renal-disease-charlson-primary-care---primary/output
  persistent-renal-disease-charlson-primary-care---primary:
    run: persistent-renal-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule55
      potentialCases:
        id: potentialCases
        source: hereditary-renal-disease-charlson-primary-care---primary/output
  renal-disease-charlson-primary-care-associated---primary:
    run: renal-disease-charlson-primary-care-associated---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule56
      potentialCases:
        id: potentialCases
        source: persistent-renal-disease-charlson-primary-care---primary/output
  segmental-renal-disease-charlson-primary-care---primary:
    run: segmental-renal-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule57
      potentialCases:
        id: potentialCases
        source: renal-disease-charlson-primary-care-associated---primary/output
  renal-disease-charlson-primary-care-diabetes---primary:
    run: renal-disease-charlson-primary-care-diabetes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule58
      potentialCases:
        id: potentialCases
        source: segmental-renal-disease-charlson-primary-care---primary/output
  renal-disease-charlson-primary-care-progre---primary:
    run: renal-disease-charlson-primary-care-progre---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule59
      potentialCases:
        id: potentialCases
        source: renal-disease-charlson-primary-care-diabetes---primary/output
  membranous-renal-disease-charlson-primary-care---primary:
    run: membranous-renal-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule60
      potentialCases:
        id: potentialCases
        source: renal-disease-charlson-primary-care-progre---primary/output
  acute-renal-disease-charlson-primary-care---primary:
    run: acute-renal-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule61
      potentialCases:
        id: potentialCases
        source: membranous-renal-disease-charlson-primary-care---primary/output
  renal---primary:
    run: renal---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule62
      potentialCases:
        id: potentialCases
        source: acute-renal-disease-charlson-primary-care---primary/output
  renal-disease-charlson-primary-care-transplant---primary:
    run: renal-disease-charlson-primary-care-transplant---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule63
      potentialCases:
        id: potentialCases
        source: renal---primary/output
  renal-disease-charlson-primary-care-invite---primary:
    run: renal-disease-charlson-primary-care-invite---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule64
      potentialCases:
        id: potentialCases
        source: renal-disease-charlson-primary-care-transplant---primary/output
  renal-disease-charlson-primary-care-complication---primary:
    run: renal-disease-charlson-primary-care-complication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule65
      potentialCases:
        id: potentialCases
        source: renal-disease-charlson-primary-care-invite---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule66
      potentialCases:
        id: potentialCases
        source: renal-disease-charlson-primary-care-complication---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
  inputModule48:
    id: inputModule48
    doc: Python implementation unit
    type: File
  inputModule49:
    id: inputModule49
    doc: Python implementation unit
    type: File
  inputModule50:
    id: inputModule50
    doc: Python implementation unit
    type: File
  inputModule51:
    id: inputModule51
    doc: Python implementation unit
    type: File
  inputModule52:
    id: inputModule52
    doc: Python implementation unit
    type: File
  inputModule53:
    id: inputModule53
    doc: Python implementation unit
    type: File
  inputModule54:
    id: inputModule54
    doc: Python implementation unit
    type: File
  inputModule55:
    id: inputModule55
    doc: Python implementation unit
    type: File
  inputModule56:
    id: inputModule56
    doc: Python implementation unit
    type: File
  inputModule57:
    id: inputModule57
    doc: Python implementation unit
    type: File
  inputModule58:
    id: inputModule58
    doc: Python implementation unit
    type: File
  inputModule59:
    id: inputModule59
    doc: Python implementation unit
    type: File
  inputModule60:
    id: inputModule60
    doc: Python implementation unit
    type: File
  inputModule61:
    id: inputModule61
    doc: Python implementation unit
    type: File
  inputModule62:
    id: inputModule62
    doc: Python implementation unit
    type: File
  inputModule63:
    id: inputModule63
    doc: Python implementation unit
    type: File
  inputModule64:
    id: inputModule64
    doc: Python implementation unit
    type: File
  inputModule65:
    id: inputModule65
    doc: Python implementation unit
    type: File
  inputModule66:
    id: inputModule66
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
