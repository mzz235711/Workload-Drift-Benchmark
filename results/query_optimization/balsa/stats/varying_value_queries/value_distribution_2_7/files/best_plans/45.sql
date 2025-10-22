/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>22 AND p.Score<148 AND p.CommentCount>5 AND p.CommentCount<42 AND u.DownVotes>362 AND u.DownVotes<666 AND v.CreationDate>'2012-10-08 20:19:22'::timestamp AND v.CreationDate<'2013-12-14 23:21:03'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<3 AND b.Date>'2011-04-03 21:04:34'::timestamp AND b.Date<'2012-01-08 09:46:54'::timestamp;

