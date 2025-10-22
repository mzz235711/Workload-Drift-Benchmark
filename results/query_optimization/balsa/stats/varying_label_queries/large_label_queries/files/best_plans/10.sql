/*+ HashJoin(ph u p b)
 MergeJoin(ph u p)
 HashJoin(u p)
 IndexScan(ph)
 IndexScan(u)
 SeqScan(p)
 IndexScan(b)
 Leading(((ph (u p)) b)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u, badges as b WHERE u.Id = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = b.UserId AND ph.CreationDate>='2011-11-10 17:36:47'::timestamp AND ph.CreationDate<='2014-08-24 19:54:43'::timestamp AND p.PostTypeId=1 AND p.Score<=20 AND p.ViewCount>=0 AND p.AnswerCount<=3 AND u.DownVotes>=0 AND u.DownVotes<=1 AND u.CreationDate>='2010-08-04 15:16:51'::timestamp AND u.CreationDate<='2014-08-11 15:51:30'::timestamp;

