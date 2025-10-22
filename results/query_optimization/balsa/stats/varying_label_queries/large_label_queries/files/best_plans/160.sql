/*+ HashJoin(ph u b v c)
 HashJoin(ph u b v)
 MergeJoin(ph u b)
 HashJoin(u b)
 IndexScan(ph)
 IndexScan(u)
 IndexScan(b)
 SeqScan(v)
 SeqScan(c)
 Leading((((ph (u b)) v) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, votes as v, users as u WHERE u.Id =b.UserId AND b.UserId = ph.UserId AND ph.UserId = v.UserId AND v.UserId = c.UserId AND c.Score=1 AND c.CreationDate>='2010-07-29 15:11:55'::timestamp AND u.Reputation>=1 AND u.Reputation<=329 AND u.Views>=0 AND u.Views<=108;

