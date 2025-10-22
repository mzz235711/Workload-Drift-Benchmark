/*+ HashJoin(p u b v)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 SeqScan(v)
 Leading(((p (u b)) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>0 AND p.Score<61 AND p.CommentCount>2 AND p.CommentCount<13 AND u.DownVotes>363 AND u.DownVotes<473 AND v.CreationDate>'2012-04-19 14:08:27'::timestamp AND v.CreationDate<'2012-11-26 21:54:14'::timestamp AND v.VoteTypeId>5 AND v.VoteTypeId<15 AND b.Date>'2010-09-05 04:54:07'::timestamp AND b.Date<'2013-05-10 03:00:45'::timestamp;

