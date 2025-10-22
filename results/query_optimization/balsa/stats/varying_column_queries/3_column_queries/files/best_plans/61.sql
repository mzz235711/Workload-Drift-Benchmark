/*+ HashJoin(ph c b u)
 MergeJoin(c b u)
 MergeJoin(b u)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(b)
 IndexScan(u)
 Leading((ph (c (b u)))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = ph.UserId AND u.Id = b.UserId AND c.Score=0 AND c.CreationDate='2012-09-29 19:56:44'::timestamp AND u.Views>=0;

