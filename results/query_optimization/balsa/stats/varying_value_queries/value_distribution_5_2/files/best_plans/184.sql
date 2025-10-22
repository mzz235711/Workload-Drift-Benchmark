/*+ NestLoop(u p b v)
 NestLoop(u p b)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(b)
 IndexScan(v)
 Leading((((u p) b) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>58 AND p.Score<158 AND p.CommentCount>2 AND p.CommentCount<40 AND u.DownVotes>8 AND u.DownVotes<1321 AND v.CreationDate>'2009-11-04 14:21:08'::timestamp AND v.CreationDate<'2011-10-18 09:55:14'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<8 AND b.Date>'2012-11-23 19:02:29'::timestamp AND b.Date<'2013-07-11 17:05:13'::timestamp;

