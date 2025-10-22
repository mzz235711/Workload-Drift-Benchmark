/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>14 AND p.Score<106 AND p.CommentCount>11 AND p.CommentCount<38 AND u.DownVotes>166 AND u.DownVotes<1061 AND v.CreationDate>'2009-11-29 19:29:53'::timestamp AND v.CreationDate<'2011-06-27 04:26:19'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<13 AND b.Date>'2011-08-27 04:38:04'::timestamp AND b.Date<'2013-12-18 12:39:27'::timestamp;

