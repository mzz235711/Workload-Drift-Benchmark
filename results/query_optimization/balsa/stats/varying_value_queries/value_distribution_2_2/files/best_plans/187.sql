/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-1 AND p.Score<162 AND p.CommentCount>14 AND p.CommentCount<37 AND u.DownVotes>441 AND u.DownVotes<1648 AND v.CreationDate>'2009-04-22 12:30:48'::timestamp AND v.CreationDate<'2014-01-16 18:28:04'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<14 AND b.Date>'2011-03-25 03:02:13'::timestamp AND b.Date<'2014-03-23 05:14:09'::timestamp;

