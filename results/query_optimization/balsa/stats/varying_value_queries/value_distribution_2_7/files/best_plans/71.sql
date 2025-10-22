/*+ HashJoin(p u b v)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 SeqScan(v)
 Leading(((p (u b)) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>11 AND p.Score<183 AND p.CommentCount>8 AND p.CommentCount<34 AND u.DownVotes>437 AND u.DownVotes<1533 AND v.CreationDate>'2011-11-16 17:26:36'::timestamp AND v.CreationDate<'2014-05-06 09:38:45'::timestamp AND v.VoteTypeId>5 AND v.VoteTypeId<13 AND b.Date>'2012-01-28 18:21:07'::timestamp AND b.Date<'2014-05-30 15:51:36'::timestamp;

