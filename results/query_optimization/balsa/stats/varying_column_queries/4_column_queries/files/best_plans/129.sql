/*+ HashJoin(b u)
 SeqScan(b)
 IndexScan(u)
 Leading((b u)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND u.Reputation<=146 AND u.UpVotes>=0 AND u.UpVotes<=44 AND u.CreationDate>='2010-12-23 05:52:09'::timestamp;

