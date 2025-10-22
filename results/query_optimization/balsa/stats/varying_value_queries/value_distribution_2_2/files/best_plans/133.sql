/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>8 AND p.Score<111 AND p.CommentCount>3 AND p.CommentCount<20 AND u.DownVotes>35 AND u.DownVotes<237 AND v.CreationDate>'2009-05-30 22:12:16'::timestamp AND v.CreationDate<'2011-02-11 10:16:58'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<12 AND b.Date>'2010-12-25 06:58:56'::timestamp AND b.Date<'2014-04-07 05:01:35'::timestamp;

