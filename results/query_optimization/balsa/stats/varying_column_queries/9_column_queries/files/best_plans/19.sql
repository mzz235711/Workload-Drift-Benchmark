/*+ HashJoin(ph u p)
 HashJoin(ph u)
 SeqScan(ph)
 SeqScan(u)
 SeqScan(p)
 Leading(((ph u) p)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.UserId = p.OwnerUserId AND ph.UserId = u.Id AND p.PostTypeId=1 AND p.ViewCount>=0 AND p.ViewCount<=4894 AND p.AnswerCount<=4 AND p.FavoriteCount>=0 AND u.Reputation>=1 AND u.Reputation<=325 AND u.Views>=0 AND u.CreationDate>='2010-08-04 16:51:56'::timestamp;

