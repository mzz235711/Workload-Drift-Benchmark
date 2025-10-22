/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>31 AND p.Score<156 AND p.CommentCount>3 AND p.CommentCount<26 AND u.DownVotes>74 AND u.DownVotes<1532 AND v.CreationDate>'2012-05-03 19:54:05'::timestamp AND v.CreationDate<'2014-08-17 23:59:11'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<10 AND b.Date>'2012-12-09 02:22:16'::timestamp AND b.Date<'2013-08-31 15:40:51'::timestamp;

