/*+ HashJoin(ph p u b)
 HashJoin(ph p u)
 HashJoin(p u)
 SeqScan(ph)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading(((ph (p u)) b)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u, badges as b WHERE u.Id = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = b.UserId AND p.PostTypeId=1 AND p.AnswerCount>=0 AND p.CreationDate<='2014-08-27 11:19:18'::timestamp AND u.Reputation>=1 AND u.Reputation<=1713 AND b.Date<='2014-09-10 18:22:38'::timestamp;

