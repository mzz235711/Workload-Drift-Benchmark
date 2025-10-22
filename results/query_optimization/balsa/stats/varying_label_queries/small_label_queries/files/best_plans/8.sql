/*+ HashJoin(ph u p)
 HashJoin(ph u)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(p)
 Leading(((ph u) p)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.UserId = p.OwnerUserId AND ph.UserId = u.Id AND p.PostTypeId=1 AND p.ViewCount>=0 AND p.ViewCount<=21588 AND p.AnswerCount>=0 AND p.FavoriteCount>=0 AND u.UpVotes<=9 AND u.CreationDate>='2010-10-25 07:41:41'::timestamp AND u.CreationDate<='2014-07-04 19:27:32'::timestamp;

