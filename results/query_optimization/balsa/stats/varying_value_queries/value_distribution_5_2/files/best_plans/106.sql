/*+ NestLoop(u p b v)
 NestLoop(u p b)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(b)
 IndexScan(v)
 Leading((((u p) b) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-7 AND p.Score<17 AND p.CommentCount>11 AND p.CommentCount<34 AND u.DownVotes>194 AND u.DownVotes<1405 AND v.CreationDate>'2011-05-12 09:41:51'::timestamp AND v.CreationDate<'2012-05-18 03:03:46'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<10 AND b.Date>'2010-09-19 12:04:57'::timestamp AND b.Date<'2011-10-31 21:33:54'::timestamp;

