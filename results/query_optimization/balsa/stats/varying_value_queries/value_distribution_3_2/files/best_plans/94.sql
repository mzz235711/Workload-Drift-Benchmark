/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-16 AND p.Score<95 AND p.CommentCount>7 AND p.CommentCount<40 AND u.DownVotes>428 AND u.DownVotes<784 AND v.CreationDate>'2012-02-03 03:06:33'::timestamp AND v.CreationDate<'2013-08-16 03:58:31'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<12 AND b.Date>'2012-03-05 19:29:25'::timestamp AND b.Date<'2013-07-21 02:39:49'::timestamp;

