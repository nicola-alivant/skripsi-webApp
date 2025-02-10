--
-- PostgreSQL database dump
--

-- Dumped from database version 16.6
-- Dumped by pg_dump version 16.6

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

-- *not* creating schema, since initdb creates it


ALTER SCHEMA public OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: authentications; Type: TABLE; Schema: public; Owner: feedreport
--

CREATE TABLE public.authentications (
    token text
);


ALTER TABLE public.authentications OWNER TO feedreport;

--
-- Name: reports; Type: TABLE; Schema: public; Owner: feedreport
--

CREATE TABLE public.reports (
    id text NOT NULL,
    tanggal text NOT NULL,
    hari text NOT NULL,
    jam text NOT NULL,
    suhu_air text NOT NULL,
    ph_air text NOT NULL,
    jumlah_ikan text NOT NULL,
    lama_pakan text NOT NULL,
    status text NOT NULL,
    created_at text NOT NULL,
    updated_at text NOT NULL
);


ALTER TABLE public.reports OWNER TO feedreport;

--
-- Data for Name: authentications; Type: TABLE DATA; Schema: public; Owner: feedreport
--

INSERT INTO public.authentications VALUES ('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJpZmllZFVzZXJuYW1lIjoiZmVlZFJlcG9ydCIsImlhdCI6MTczMDUyNTU1NX0.8qkOAPtrf2nLEc2QGB6tAbW2Dxh6FySFV0wiPo1LJm0');
INSERT INTO public.authentications VALUES ('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJpZmllZFVzZXJuYW1lIjoiZmVlZFJlcG9ydCIsImlhdCI6MTczMDUzMjA0MX0.MzoWfLEeWDuCYcAECP7Jsii-tFMDD7gE28JGtVwsEWU');
INSERT INTO public.authentications VALUES ('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJpZmllZFVzZXJuYW1lIjoiZmVlZFJlcG9ydCIsImlhdCI6MTczMDY4NTUzOH0.FO2qS5Uwti1VULB5yLFABZIw2KVkFuZ7R01C2X_BDRc');
INSERT INTO public.authentications VALUES ('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJpZmllZFVzZXJuYW1lIjoiZmVlZFJlcG9ydCIsImlhdCI6MTczMDY5MTc2OX0.LzLfdMiUKxTr0Gik5P96IPSbchu3RCuTbpIqKyNeXsg');
INSERT INTO public.authentications VALUES ('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJpZmllZFVzZXJuYW1lIjoiZmVlZFJlcG9ydCIsImlhdCI6MTczMDc3MTY5M30.pp0tGDqbuxDGYI3N3D4s_ddBAwIH3R3tH0u9EZL0kCs');
INSERT INTO public.authentications VALUES ('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJpZmllZFVzZXJuYW1lIjoiZmVlZFJlcG9ydCIsImlhdCI6MTczMDc3NzExOX0.xMv4q_JHyILrTGxSd8kND78xtVg8UbK06xnXUDgw95g');
INSERT INTO public.authentications VALUES ('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJpZmllZFVzZXJuYW1lIjoiZmVlZFJlcG9ydCIsImlhdCI6MTczMDc5MzE3Mn0.k7GCxHA7YtAt8khI3UK2tjIto8MwBV2XHDrpc110iG8');
INSERT INTO public.authentications VALUES ('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJpZmllZFVzZXJuYW1lIjoiZmVlZFJlcG9ydCIsImlhdCI6MTczMDg1ODYwM30.y5aw94GVy1Pyj1D6jRD5cAQPjJ3chm3zwYigVQ6ziLk');
INSERT INTO public.authentications VALUES ('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJpZmllZFVzZXJuYW1lIjoiZmVlZFJlcG9ydCIsImlhdCI6MTczMDg4MjYwOX0.0HlaUcmItTtG_NW5dhFr3d25WcqL8ecJAti40uHrIBw');
INSERT INTO public.authentications VALUES ('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJpZmllZFVzZXJuYW1lIjoiZmVlZFJlcG9ydCIsImlhdCI6MTczMDk0NDUxNH0.m3LRYOLKxn0WqzvJqjG32aYtnJ7-Zp0z0mVat-cWThM');
INSERT INTO public.authentications VALUES ('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJpZmllZFVzZXJuYW1lIjoiZmVlZFJlcG9ydCIsImlhdCI6MTczMDk2NjI0Mn0.DSHLlBQqfmg4nV2Dj7XRaQDRi3ipC2OdqnIf2EuyFVw');
INSERT INTO public.authentications VALUES ('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJpZmllZFVzZXJuYW1lIjoiZmVlZFJlcG9ydCIsImlhdCI6MTczMDk2NjU3OH0.MOol9AZWeKY8FgiPnOwNkzYOxufGTynktTsHrFqZmBw');
INSERT INTO public.authentications VALUES ('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJpZmllZFVzZXJuYW1lIjoiZmVlZFJlcG9ydCIsImlhdCI6MTczMDk2Njk0M30.1TouXu9RDFg2yGg9EJugxY_uTAKQQONGuWrA22ePnHY');
INSERT INTO public.authentications VALUES ('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJpZmllZFVzZXJuYW1lIjoiZmVlZFJlcG9ydCIsImlhdCI6MTczMDk2NzA3NH0.TjWeT9irhQrCJEpp5dlqZfBxkRKRdqK6Vm4w0proWkE');
INSERT INTO public.authentications VALUES ('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJpZmllZFVzZXJuYW1lIjoiZmVlZFJlcG9ydCIsImlhdCI6MTczMDk2NzI0OH0.GhSaviyPP8JT2FDqpELQ1QhC_H15xxs5GXaJd6XIeuo');
INSERT INTO public.authentications VALUES ('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJpZmllZFVzZXJuYW1lIjoiZmVlZFJlcG9ydCIsImlhdCI6MTczMDk2NzY1MX0.cP1uPQ975WCWcvKhb2rrd-nR73S-G9UvuCVZpSx4THU');
INSERT INTO public.authentications VALUES ('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJpZmllZFVzZXJuYW1lIjoiZmVlZFJlcG9ydCIsImlhdCI6MTczMTAzMDk5M30.PX6XK5jubjqwx6aZ9fUqszXmoQFACE4x9S2YjnXT-Kc');
INSERT INTO public.authentications VALUES ('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJpZmllZFVzZXJuYW1lIjoiZmVlZFJlcG9ydCIsImlhdCI6MTczMTEyMzk3Mn0.cAqddpVcGoBM5HiFPyHjmh_f9AXVDHD--CQAiCYkufU');
INSERT INTO public.authentications VALUES ('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJpZmllZFVzZXJuYW1lIjoiZmVlZFJlcG9ydCIsImlhdCI6MTczMTIwMzE0N30.FYv1G5So3wjLfAB4ttwJEMpE34Y-otVp1PxFm-ioIPs');
INSERT INTO public.authentications VALUES ('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJpZmllZFVzZXJuYW1lIjoiZmVlZFJlcG9ydCIsImlhdCI6MTczMTIyNzM5MH0.ggKcC6f3-IWqYLrxSwVoFDSA3mwf_lci7iYBhLImiys');
INSERT INTO public.authentications VALUES ('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJpZmllZFVzZXJuYW1lIjoiZmVlZFJlcG9ydCIsImlhdCI6MTczMTMxMjEwOX0.jj2_UbN2ho3rWVlVYNF_76ENXDH18yxJYYnPs6J6kuM');
INSERT INTO public.authentications VALUES ('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJpZmllZFVzZXJuYW1lIjoiZmVlZFJlcG9ydCIsImlhdCI6MTczMTMxMjQzMH0.wLNd2SlQCUQxnonrxRVswkBGLWY4EdImm-J3AC7uYZ4');
INSERT INTO public.authentications VALUES ('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJpZmllZFVzZXJuYW1lIjoiZmVlZFJlcG9ydCIsImlhdCI6MTczMTM3NTY3Mn0.gMtzUu5kujEpL9n2gI3a9uYCk5NvWO3Bywu-fc3triY');
INSERT INTO public.authentications VALUES ('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJpZmllZFVzZXJuYW1lIjoiZmVlZFJlcG9ydCIsImlhdCI6MTczMTQ2Njc2Mn0.ruDPW0_qV3tTA4exZWB7IYfPe8i9fzQCn5Ldtn6EkEs');
INSERT INTO public.authentications VALUES ('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJpZmllZFVzZXJuYW1lIjoiZmVlZFJlcG9ydCIsImlhdCI6MTczMTU1MDQ0M30.r3dEaFKwsnUX_IVPh8LqcJxcmvCZ6pvAFcx5rHhWfls');
INSERT INTO public.authentications VALUES ('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJpZmllZFVzZXJuYW1lIjoiZmVlZFJlcG9ydCIsImlhdCI6MTczMTU1MDgzNH0.j15wcJWlu5SwVm5uQ8NG84XfcgDDIKNkqqdGyg5PaHQ');
INSERT INTO public.authentications VALUES ('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJpZmllZFVzZXJuYW1lIjoiZmVlZFJlcG9ydCIsImlhdCI6MTczMTU3MTA0MH0.1BU8e85RD-94yy73r54mYYNqIU5Yj4BY99RHKrTD_Zs');
INSERT INTO public.authentications VALUES ('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJpZmllZFVzZXJuYW1lIjoiZmVlZFJlcG9ydCIsImlhdCI6MTczMTYzNTg3OX0.S88I5mh2yN7-yISh80FzbG4koekkpNSjyqzMqyGdmDI');
INSERT INTO public.authentications VALUES ('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJpZmllZFVzZXJuYW1lIjoiZmVlZFJlcG9ydCIsImlhdCI6MTczMTY5MDg4M30.eR55Fn0Ys4WoSu8fOZIVbq9krfeJT2efh7BhLPum6Ho');
INSERT INTO public.authentications VALUES ('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJpZmllZFVzZXJuYW1lIjoiZmVlZFJlcG9ydCIsImlhdCI6MTczMTcyMTQ2Nn0.YV6A-grJerX2ro3UI_4NLzeLUPOPKaf7ukLhNSmiK8o');
INSERT INTO public.authentications VALUES ('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJpZmllZFVzZXJuYW1lIjoiZmVlZFJlcG9ydCIsImlhdCI6MTczMTk5MDgzOX0.AYP3W2x8kSIPxSkoTA-72fy5qvHo0OzELur3vY_i_7I');
INSERT INTO public.authentications VALUES ('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJpZmllZFVzZXJuYW1lIjoiZmVlZFJlcG9ydCIsImlhdCI6MTczMjA2Nzk2M30.ujVCo6L84cC-0jRO9psi2QjEZx-1yyINF9HYmhgDp_o');
INSERT INTO public.authentications VALUES ('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJpZmllZFVzZXJuYW1lIjoiZmVlZFJlcG9ydCIsImlhdCI6MTczMjA2ODQwN30.l1_pgnwaJRkBcT7_epaUwV93-99L3lI2C8jajloj2gc');
INSERT INTO public.authentications VALUES ('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJpZmllZFVzZXJuYW1lIjoiZmVlZFJlcG9ydCIsImlhdCI6MTczMjE1NDQxNX0.DI4q5AaNCMcBMZaeUSxexjm3tovpzVqk6snxJJm2uao');
INSERT INTO public.authentications VALUES ('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJpZmllZFVzZXJuYW1lIjoiZmVlZFJlcG9ydCIsImlhdCI6MTczMjE1NDg5N30.zwJX36uOu7h-WxXybc_1iynLMGdAln4VfQMcrJyxkaY');
INSERT INTO public.authentications VALUES ('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJpZmllZFVzZXJuYW1lIjoiZmVlZFJlcG9ydCIsImlhdCI6MTczMjE3ODQ3NH0.ji_SOP4IqMSrO-2dHVcMmq7TQvudUs58bsj2iM95jik');
INSERT INTO public.authentications VALUES ('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJpZmllZFVzZXJuYW1lIjoiZmVlZFJlcG9ydCIsImlhdCI6MTczMjI2MjIxMH0.pnpOJmSZ80XlqszeJCHGX6qGbg7XkLk7rOvsZZw4Jcs');
INSERT INTO public.authentications VALUES ('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJpZmllZFVzZXJuYW1lIjoiZmVlZFJlcG9ydCIsImlhdCI6MTczMjI2MzEyOX0.61r0SSCCRA9JwsyduUYHR9DBw0uiHc78dffwcuW9B9E');
INSERT INTO public.authentications VALUES ('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJpZmllZFVzZXJuYW1lIjoiZmVlZFJlcG9ydCIsImlhdCI6MTczMjMyNjc5NX0.MEHBrKhLzcBQai4CLrl8BKj7p2mZWes-jl2xwj3jrEw');
INSERT INTO public.authentications VALUES ('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJpZmllZFVzZXJuYW1lIjoiZmVlZFJlcG9ydCIsImlhdCI6MTczMjQzMTkyMn0.blhirnaRaC76ZS7-i00_qMk6Re9aQ0oVoh5Fn9ad-Js');
INSERT INTO public.authentications VALUES ('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJpZmllZFVzZXJuYW1lIjoiZmVlZFJlcG9ydCIsImlhdCI6MTczMjQ4ODU5NX0.Lt8oIocctE-B-SXDXGD2kAuFkfCILtod9L4qygsZcfs');
INSERT INTO public.authentications VALUES ('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJpZmllZFVzZXJuYW1lIjoiZmVlZFJlcG9ydCIsImlhdCI6MTczMjUxMTk1OH0.YVrVqExeSorqn_-ww2xn69s2vQBXdk6BiE2O5eplNrM');
INSERT INTO public.authentications VALUES ('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJpZmllZFVzZXJuYW1lIjoiZmVlZFJlcG9ydCIsImlhdCI6MTczMjU0ODUwN30.TTwZihPWQUed8oa-ex1Nnbbw_R4jnIAIvHeRO1R-JDk');
INSERT INTO public.authentications VALUES ('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJpZmllZFVzZXJuYW1lIjoiZmVlZFJlcG9ydCIsImlhdCI6MTczMjc1ODQ5Mn0.6Xr8v0KAt3FIL6do3fGjivtaQCKXajPfKN5nQXiyYTs');
INSERT INTO public.authentications VALUES ('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJpZmllZFVzZXJuYW1lIjoiZmVlZFJlcG9ydCIsImlhdCI6MTczMjc1ODgxOH0.gkhwLTEz6hrxmBs_aAoS9gWLx5aQZqDyvQqkFctG-Mo');


--
-- Data for Name: reports; Type: TABLE DATA; Schema: public; Owner: feedreport
--

INSERT INTO public.reports VALUES ('report-ItWR-G7kO1Pbb9CK', '08-11-2024', 'Jumat', '15:00', '28.12', '8.66', '10', '12 detik / 12 gram', 'Dengan Timer', '2024-11-08T08:02:04.086Z', '2024-11-08T08:02:04.086Z');
INSERT INTO public.reports VALUES ('report-ZuSvVbGJ3UK-2uou', '09-11-2024', 'Sabtu', '09:00', '28.75', '8.45', '10', '10 detik / 10 gram', 'Dengan Timer', '2024-11-09T02:03:52.516Z', '2024-11-09T02:03:52.516Z');
INSERT INTO public.reports VALUES ('report-j-2qVISDJT3LbL77', '16-11-2024', 'Sabtu', '15:00', '28.72', '8.65', '9', '11 detik / 11 gram', 'Dengan Timer', '2024-11-16T08:02:19.365Z', '2024-11-16T08:02:19.365Z');
INSERT INTO public.reports VALUES ('report-FW3AoLWex28GidmO', '09-11-2024', 'Sabtu', '15:00', '28.38', '8.44', '10', '12 detik / 12 gram', 'Dengan Timer', '2024-11-09T08:01:02.576Z', '2024-11-09T08:01:02.576Z');
INSERT INTO public.reports VALUES ('report-vYIFwf8nkz7iY0TE', '10-11-2024', 'Minggu', '09:00', '28.50', '8.35', '10', '12 detik / 12 gram', 'Dengan Timer', '2024-11-10T02:01:02.603Z', '2024-11-10T02:01:02.603Z');
INSERT INTO public.reports VALUES ('report-iQC2RNTVFLkZkLAh', '10-11-2024', 'Minggu', '15:00', '30.05', '8.28', '10', '9 detik / 9 gram', 'Dengan Timer', '2024-11-10T08:03:17.276Z', '2024-11-10T08:03:17.276Z');
INSERT INTO public.reports VALUES ('report-CFEhh2E60uwJnztn', '11-11-2024', 'Senin', '09:00', '29.84', '8.33', '10', '9 detik / 9 gram', 'Dengan Timer', '2024-11-11T02:02:56.508Z', '2024-11-11T02:02:56.508Z');
INSERT INTO public.reports VALUES ('report-UKOZ_j05KmqRAYV6', '11-11-2024', 'Senin', '15:00', '28.77', '8.26', '10', '10 detik / 10 gram', 'Dengan Timer', '2024-11-11T08:02:27.992Z', '2024-11-11T08:02:27.992Z');
INSERT INTO public.reports VALUES ('report-TAv9IDHiDFayE0rH', '12-11-2024', 'Selasa', '09:00', '29.98', '8.28', '9', '9 detik / 9 gram', 'Dengan Timer', '2024-11-12T02:02:50.269Z', '2024-11-12T02:02:50.269Z');
INSERT INTO public.reports VALUES ('report--M0YudJqXELnvc34', '12-11-2024', 'Selasa', '15:00', '28.67', '8.25', '9', '11 detik / 11 gram', 'Dengan Timer', '2024-11-12T08:03:35.653Z', '2024-11-12T08:03:35.653Z');
INSERT INTO public.reports VALUES ('report-XES_kmihfhEpivan', '13-11-2024', 'Rabu', '09:00', '30.03', '8.21', '9', '9 detik / 9 gram', 'Dengan Timer', '2024-11-13T02:01:37.958Z', '2024-11-13T02:01:37.958Z');
INSERT INTO public.reports VALUES ('report-WQgWPOokHZB5gQA3', '13-11-2024', 'Rabu', '15:00', '28.32', '8.18', '9', '12 detik / 12 gram', 'Dengan Timer', '2024-11-13T08:01:29.964Z', '2024-11-13T08:01:29.964Z');
INSERT INTO public.reports VALUES ('report-ubpBCkiUO4mEGDBx', '17-11-2024', 'Minggu', '09:00', '30.81', '8.68', '9', '9 detik / 9 gram', 'Dengan Timer', '2024-11-17T02:01:15.849Z', '2024-11-17T02:01:15.849Z');
INSERT INTO public.reports VALUES ('report-K2ybeSfOWstpmGuw', '14-11-2024', 'Kamis', '09:00', '30.63', '8.84', '9', '9 detik / 9 gram', 'Dengan Timer', '2024-11-14T02:01:55.311Z', '2024-11-14T02:01:55.311Z');
INSERT INTO public.reports VALUES ('report-OLhKqNg-wWO3vXvA', '17-11-2024', 'Minggu', '15:00', '29.66', '8.58', '9', '9 detik / 9 gram', 'Dengan Timer', '2024-11-17T08:03:12.397Z', '2024-11-17T08:03:12.397Z');
INSERT INTO public.reports VALUES ('report-D0rSLvJIJDBpKcN2', '18-11-2024', 'Senin', '15:00', '29.36', '8.52', '9', '9 detik / 9 gram', 'Dengan Timer', '2024-11-18T08:03:57.381Z', '2024-11-18T08:03:57.381Z');
INSERT INTO public.reports VALUES ('report-v66x7jBU_6RDzt2W', '18-11-2024', 'Senin', '09:00', '30.88', '8.64', '9', '9 detik / 9 gram', 'Dengan Timer', '2024-11-18T02:03:03.950Z', '2024-11-18T02:03:03.950Z');
INSERT INTO public.reports VALUES ('report-6OX_c7iTL_ZvhmpQ', '04-11-2024', 'Senin', '09:00', '29.01', '9.04', '10', '9 detik / 9 gram', 'Dengan Timer', '2024-11-04T02:02:11.159Z', '2024-11-04T02:02:11.159Z');
INSERT INTO public.reports VALUES ('report-UvkKUpnI9xHPA5cO', '04-11-2024', 'Senin', '15:00', '29.05', '9.06', '10', '9 detik / 9 gram', 'Dengan Timer', '2024-11-04T08:02:17.712Z', '2024-11-04T08:02:17.712Z');
INSERT INTO public.reports VALUES ('report-KJuin3YypQXDgNVg', '05-11-2024', 'Selasa', '09:00', '28.66', '8.95', '10', '11 detik / 11 gram', 'Dengan Timer', '2024-11-05T02:02:14.095Z', '2024-11-05T02:02:14.095Z');
INSERT INTO public.reports VALUES ('report-fz0hF3g4rOgnJRoK', '05-11-2024', 'Selasa', '15:00', '29.01', '9.17', '10', '9 detik / 9 gram', 'Dengan Timer', '2024-11-05T08:02:19.787Z', '2024-11-05T08:02:19.787Z');
INSERT INTO public.reports VALUES ('report-la7NoASiW5GfWR-7', '06-11-2024', 'Rabu', '09:00', '28.96', '9.11', '10', '9 detik / 9 gram', 'Dengan Timer', '2024-11-06T02:02:11.497Z', '2024-11-06T02:02:11.497Z');
INSERT INTO public.reports VALUES ('report-onYWzSm3vYb1GOiL', '06-11-2024', 'Rabu', '15:00', '29.09', '8.91', '10', '9 detik / 9 gram', 'Dengan Timer', '2024-11-06T08:02:13.169Z', '2024-11-06T08:02:13.169Z');
INSERT INTO public.reports VALUES ('report-X1HVguX37Pb7gJBR', '14-11-2024', 'Kamis', '15:00', '29.57', '8.71', '9', '9 detik / 9 gram', 'Dengan Timer', '2024-11-14T08:00:51.570Z', '2024-11-14T08:00:51.570Z');
INSERT INTO public.reports VALUES ('report-aaKwXQb9AphOBggu', '07-11-2024', 'Kamis', '09:00', '28.72', '8.96', '10', '11 detik / 11 gram', 'Dengan Timer', '2024-11-07T02:00:00.781Z', '2024-11-07T02:00:00.781Z');
INSERT INTO public.reports VALUES ('report-sCDfZPkuJMNLleKE', '07-11-2024', 'Kamis', '15:00', '27.88', '8.95', '10', '12 detik / 12 gram', 'Dengan Timer', '2024-11-07T08:01:21.845Z', '2024-11-07T08:01:21.845Z');
INSERT INTO public.reports VALUES ('report-vJtQrotxZaUC3kzG', '08-11-2024', 'Jumat', '09:00', '28.06', '8.82', '10', '12 detik / 12 gram', 'Dengan Timer', '2024-11-08T02:00:49.144Z', '2024-11-08T02:00:49.144Z');
INSERT INTO public.reports VALUES ('report-mIy6fZHZdR5xcBiH', '15-11-2024', 'Jumat', '09:00', '28.75', '8.63', '9', '11 detik / 11 gram', 'Dengan Timer', '2024-11-15T02:00:49.994Z', '2024-11-15T02:00:49.994Z');
INSERT INTO public.reports VALUES ('report-tswTOM_byCw0pcTA', '15-11-2024', 'Jumat', '15:00', '28.48', '8.61', '9', '12 detik / 12 gram', 'Dengan Timer', '2024-11-15T08:01:03.132Z', '2024-11-15T08:01:03.132Z');
INSERT INTO public.reports VALUES ('report-UwUP0xKlmymDyhat', '16-11-2024', 'Sabtu', '09:00', '29.50', '8.67', '9', '9 detik / 9 gram', 'Dengan Timer', '2024-11-16T02:01:17.737Z', '2024-11-16T02:01:17.737Z');
INSERT INTO public.reports VALUES ('report-V6q8XE1Ke60ZdKbj', '26-11-2024', 'Selasa', '09:00', '30.24', '8.78', '9', '9 detik / 9 gram', 'Dengan Timer', '2024-11-26T02:03:02.351Z', '2024-11-26T02:03:02.351Z');
INSERT INTO public.reports VALUES ('report-Rxz-aueP4mKaOr5C', '19-11-2024', 'Selasa', '15:00', '28.66', '8.58', '9', '11 detik / 11 gram', 'Dengan Timer', '2024-11-19T08:01:43.853Z', '2024-11-19T08:01:43.853Z');
INSERT INTO public.reports VALUES ('report-lVvk0qtAuyb_oe9O', '21-11-2024', 'Kamis', '09:00', '28', '8.55', '9', '12 detik / 12 gram', 'Dengan Timer', '2024-11-21T02:01:04.890Z', '2024-11-21T02:01:04.890Z');
INSERT INTO public.reports VALUES ('report-itT2MkOEqfuJSNJ1', '26-11-2024', 'Selasa', '15:00', '28.67', '8.75', '9', '11 detik / 11 gram', 'Dengan Timer', '2024-11-26T08:02:27.243Z', '2024-11-26T08:02:27.243Z');
INSERT INTO public.reports VALUES ('report-an8FqJd7_IlH8R9M', '27-11-2024', 'Rabu', '09:00', '29.49', '8.77', '9', '9 detik / 9 gram', 'Dengan Timer', '2024-11-27T02:03:01.155Z', '2024-11-27T02:03:01.155Z');
INSERT INTO public.reports VALUES ('report-XV8PBz64Hh_MSX-B', '20-11-2024', 'Rabu', '15:00', '27.94', '8.49', '9', '9 detik / 9 gram', 'Dengan Timer', '2024-11-20T08:02:55.044Z', '2024-11-20T08:02:55.044Z');
INSERT INTO public.reports VALUES ('report-GyxRWlUgpXNh3nvD', '21-11-2024', 'Kamis', '15:00', '29.45', '8.54', '9', '9 detik / 9 gram', 'Dengan Timer', '2024-11-21T08:02:09.014Z', '2024-11-21T08:02:09.014Z');
INSERT INTO public.reports VALUES ('report-YAk1MRqNg_E2TxUk', '22-11-2024', 'Jumat', '15:00', '28.94', '8.58', '9', '12 detik / 12 gram', 'Dengan Timer', '2024-11-22T08:01:02.853Z', '2024-11-22T08:01:02.853Z');
INSERT INTO public.reports VALUES ('report-V6CXOJn3ezvi_gQo', '22-11-2024', 'Jumat', '09:00', '29.28', '8.61', '9', '9 detik / 9 gram', 'Dengan Timer', '2024-11-22T02:02:45.839Z', '2024-11-22T02:02:45.839Z');
INSERT INTO public.reports VALUES ('report-oWKiFAxJ4waQ5v7G', '23-11-2024', 'Sabtu', '09:00', '27.81', '8.53', '9', '12 detik / 12 gram', 'Dengan Timer', '2024-11-23T02:01:13.314Z', '2024-11-23T02:01:13.314Z');
INSERT INTO public.reports VALUES ('report-wp3wEOHnvmpRNzdE', '23-11-2024', 'Sabtu', '15:00', '28', '8.46', '9', '12 detik / 12 gram', 'Dengan Timer', '2024-11-23T08:01:13.424Z', '2024-11-23T08:01:13.424Z');
INSERT INTO public.reports VALUES ('report-3k0rzOHMWXxdt8Xf', '24-11-2024', 'Minggu', '09:00', '28.88', '8.49', '9', '10 detik / 10 gram', 'Dengan Timer', '2024-11-24T02:02:59.971Z', '2024-11-24T02:02:59.971Z');
INSERT INTO public.reports VALUES ('report-d6sNrYIyDwaIu0SM', '24-11-2024', 'Minggu', '15:00', '27.78', '8.52', '9', '12 detik / 12 gram', 'Dengan Timer', '2024-11-24T22:50:07.973Z', '2024-11-24T22:50:07.973Z');
INSERT INTO public.reports VALUES ('report-b7_Q0LpK-olcmDfO', '25-11-2024', 'Senin', '09:00', '29.65', '8.77', '9', '9 detik / 9 gram', 'Dengan Timer', '2024-11-25T02:02:06.018Z', '2024-11-25T02:02:06.018Z');
INSERT INTO public.reports VALUES ('report-504plImUv4yGODuQ', '27-11-2024', 'Rabu', '15:00', '27.91', '8.74', '9', '12 detik / 12 gram', 'Dengan Timer', '2024-11-27T08:02:23.319Z', '2024-11-27T08:02:23.319Z');
INSERT INTO public.reports VALUES ('report-7WqN-CZpBCebeN_l', '25-11-2024', 'Senin', '15:00', '29.47', '8.74', '9', '11 detik / 11 gram', 'Dengan Timer', '2024-11-25T08:02:42.539Z', '2024-11-25T08:02:42.539Z');
INSERT INTO public.reports VALUES ('report-vaKgfw-zC5RdL4OA', '20-11-2024', 'Rabu', '09:00', '30.12', '8.52', '9', '12 detik / 12 gram', 'Dengan Timer', '2024-11-20T02:01:10.733Z', '2024-11-20T02:01:10.733Z');
INSERT INTO public.reports VALUES ('report-UZ8tVjBwKPvQi-GV', '19-11-2024', 'Selasa', '09:00', '29.34', '8.65', '9', '9 detik / 9 gram', 'Dengan Timer', '2024-11-19T02:02:41.442Z', '2024-11-19T02:02:41.442Z');
INSERT INTO public.reports VALUES ('report-3-ZtupMKmtgk5hoc', '28-11-2024', 'Kamis', '09:00', '29.96', '8.75', '9', '9 detik / 9 gram', 'Dengan Timer', '2024-11-28T02:02:59.487Z', '2024-11-28T02:02:59.487Z');
INSERT INTO public.reports VALUES ('report-ebphbmGk_WMLkKUa', '29-11-2024', 'Jumat', '09:00', '30', '8.74', '9', '9 detik / 9 gram', 'Dengan Timer', '2024-11-29T02:02:12.821Z', '2024-11-29T02:02:12.821Z');
INSERT INTO public.reports VALUES ('report-Btru7JM8-7aCzO38', '28-11-2024', 'Kamis', '15:00', '28.78', '8.76', '9', '11 detik / 11 gram', 'Dengan Timer', '2024-11-28T08:01:48.330Z', '2024-11-28T08:01:48.330Z');
INSERT INTO public.reports VALUES ('report-RSpV-sgkien8TG4N', '29-11-2024', 'Jumat', '15:00', '28.85', '8.72', '9', '11 detik / 11 gram', 'Dengan Timer', '2024-11-29T08:02:47.209Z', '2024-11-29T08:02:47.209Z');
INSERT INTO public.reports VALUES ('report-5s2HFWThgurhu8ZU', '30-11-2024', 'Sabtu', '09:00', '29.66', '8.74', '9', '9 detik / 9 gram', 'Dengan Timer', '2024-11-30T02:03:54.571Z', '2024-11-30T02:03:54.571Z');
INSERT INTO public.reports VALUES ('report-3iggO78LCvrDoV0z', '30-11-2024', 'Sabtu', '15:00', '28.12', '8.73', '9', '12 detik / 12 gram', 'Dengan Timer', '2024-11-30T08:02:20.208Z', '2024-11-30T08:02:20.208Z');
INSERT INTO public.reports VALUES ('report-3LR_AiIrhebL5I7G', '01-12-2024', 'Minggu', '09:00', '28.96', '8.73', '9', '9 detik / 9 gram', 'Dengan Timer', '2024-12-01T02:02:59.418Z', '2024-12-01T02:02:59.418Z');
INSERT INTO public.reports VALUES ('report-eeYKd6F4bNl-_Dz1', '01-12-2024', 'Minggu', '15:00', '27.72', '8.74', '9', '12 detik / 12 gram', 'Dengan Timer', '2024-12-01T08:02:15.717Z', '2024-12-01T08:02:15.717Z');


--
-- Name: reports reports_pkey; Type: CONSTRAINT; Schema: public; Owner: feedreport
--

ALTER TABLE ONLY public.reports
    ADD CONSTRAINT reports_pkey PRIMARY KEY (id);


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

