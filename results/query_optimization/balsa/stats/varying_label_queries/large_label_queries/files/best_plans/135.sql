/*+ HashJoin(ph u c p v)
 MergeJoin(ph u c p)
 MergeJoin(u c p)
 MergeJoin(u c)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(c)
 SeqScan(p)
 SeqScan(v)
 Leading(((ph ((u c) p)) v)) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph, votes as v, users as u WHERE u.Id = c.UserId AND c.UserId = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = v.UserId AND p.AnswerCount<=3 AND p.FavoriteCount=0 AND p.CreationDate<='2014-09-09 23:47:30'::timestamp AND v.CreationDate>='2010-07-21 00:00:00'::timestamp AND u.Reputation>=1 AND u.Reputation<=328 AND u.Views<=74;

