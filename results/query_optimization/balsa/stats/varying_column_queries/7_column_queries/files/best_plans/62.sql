/*+ MergeJoin(ph p u b)
 MergeJoin(ph p u)
 MergeJoin(p u)
 SeqScan(ph)
 IndexScan(p)
 SeqScan(u)
 SeqScan(b)
 Leading(((ph (p u)) b)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u, badges as b WHERE u.Id = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = b.UserId AND ph.CreationDate<='2014-07-18 20:14:16'::timestamp AND p.PostTypeId=1 AND p.ViewCount<=7415 AND p.AnswerCount>=0 AND p.FavoriteCount<=15 AND b.Date>='2010-07-19 20:14:07'::timestamp AND b.Date<='2014-09-06 07:43:48'::timestamp;

