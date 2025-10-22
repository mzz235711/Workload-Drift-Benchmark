/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>29 AND p.Score<82 AND p.CommentCount>6 AND p.CommentCount<9 AND u.DownVotes>621 AND u.DownVotes<807 AND v.CreationDate>'2009-09-16 12:33:16'::timestamp AND v.CreationDate<'2013-01-24 06:34:15'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<11 AND b.Date>'2011-01-09 16:01:01'::timestamp AND b.Date<'2012-02-26 12:59:56'::timestamp;

