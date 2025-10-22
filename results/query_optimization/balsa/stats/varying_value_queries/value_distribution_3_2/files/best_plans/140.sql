/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>70 AND p.Score<97 AND p.CommentCount>8 AND p.CommentCount<19 AND u.DownVotes>484 AND u.DownVotes<1188 AND v.CreationDate>'2012-05-08 14:34:15'::timestamp AND v.CreationDate<'2014-04-15 12:11:53'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<12 AND b.Date>'2011-11-25 14:49:02'::timestamp AND b.Date<'2013-07-18 17:56:57'::timestamp;

