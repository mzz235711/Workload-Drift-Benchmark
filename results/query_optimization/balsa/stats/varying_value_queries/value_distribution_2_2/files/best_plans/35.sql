/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>1 AND p.Score<116 AND p.CommentCount>6 AND p.CommentCount<12 AND u.DownVotes>263 AND u.DownVotes<699 AND v.CreationDate>'2012-04-13 00:10:59'::timestamp AND v.CreationDate<'2014-09-07 03:12:40'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<14 AND b.Date>'2013-12-11 18:41:54'::timestamp AND b.Date<'2014-03-01 22:50:30'::timestamp;

