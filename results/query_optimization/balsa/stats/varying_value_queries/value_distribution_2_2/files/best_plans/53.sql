/*+ HashJoin(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 SeqScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>8 AND p.Score<15 AND p.CommentCount>4 AND p.CommentCount<20 AND u.DownVotes>706 AND u.DownVotes<1357 AND v.CreationDate>'2010-01-02 16:29:21'::timestamp AND v.CreationDate<'2012-03-01 08:12:08'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<13 AND b.Date>'2011-12-08 22:10:05'::timestamp AND b.Date<'2012-02-09 23:08:58'::timestamp;

