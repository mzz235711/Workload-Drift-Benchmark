/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>62 AND p.Score<93 AND p.CommentCount>6 AND p.CommentCount<40 AND u.DownVotes>641 AND u.DownVotes<1237 AND v.CreationDate>'2010-01-26 01:15:59'::timestamp AND v.CreationDate<'2014-07-26 08:29:53'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<12 AND b.Date>'2013-05-25 00:03:32'::timestamp AND b.Date<'2013-10-07 18:51:18'::timestamp;

