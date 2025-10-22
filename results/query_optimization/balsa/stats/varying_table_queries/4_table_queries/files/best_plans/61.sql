/*+ HashJoin(ph u b c)
 MergeJoin(ph u b)
 HashJoin(u b)
 IndexScan(ph)
 IndexScan(u)
 IndexScan(b)
 SeqScan(c)
 Leading(((ph (u b)) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = ph.UserId AND u.Id = b.UserId AND c.Score=0 AND ph.CreationDate>='2010-08-01 22:38:49'::timestamp AND u.UpVotes<=10;

