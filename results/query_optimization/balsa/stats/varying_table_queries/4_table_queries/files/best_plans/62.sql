/*+ MergeJoin(c v u b)
 MergeJoin(v u b)
 HashJoin(u b)
 SeqScan(c)
 IndexScan(v)
 IndexScan(u)
 IndexScan(b)
 Leading((c (v (u b)))) */
SELECT COUNT(*) FROM comments as c, votes as v, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND c.CreationDate>='2010-09-08 02:51:52'::timestamp AND u.DownVotes>=0;

