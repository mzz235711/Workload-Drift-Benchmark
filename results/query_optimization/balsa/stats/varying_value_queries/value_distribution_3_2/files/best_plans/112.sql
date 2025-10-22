/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>16 AND p.Score<79 AND p.CommentCount>4 AND p.CommentCount<26 AND u.DownVotes>14 AND u.DownVotes<1032 AND v.CreationDate>'2009-10-18 18:16:15'::timestamp AND v.CreationDate<'2012-08-12 20:59:50'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<13 AND b.Date>'2011-02-08 03:04:48'::timestamp AND b.Date<'2013-03-03 11:18:45'::timestamp;

