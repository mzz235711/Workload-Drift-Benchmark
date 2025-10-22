/*+ HashJoin(ph u p b)
 HashJoin(ph u p)
 HashJoin(u p)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(p)
 IndexScan(b)
 Leading(((ph (u p)) b)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u, badges as b WHERE u.Id = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = b.UserId AND p.PostTypeId=1 AND p.Score>=0 AND p.Score<=51 AND p.ViewCount>=0 AND p.ViewCount<=7902 AND p.AnswerCount>=0 AND p.FavoriteCount>=0 AND u.Views<=14 AND u.UpVotes>=0 AND u.UpVotes<=11 AND u.CreationDate<='2014-09-11 22:11:23'::timestamp;

