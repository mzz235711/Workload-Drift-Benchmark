/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-18 AND p.Score<162 AND p.CommentCount>12 AND p.CommentCount<41 AND u.DownVotes>758 AND u.DownVotes<1594 AND v.CreationDate>'2010-07-28 17:56:25'::timestamp AND v.CreationDate<'2012-04-16 01:57:50'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<14 AND b.Date>'2011-12-14 23:21:28'::timestamp AND b.Date<'2014-03-11 06:20:54'::timestamp;

