/*+ NestLoop(u p b v)
 NestLoop(u p b)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(b)
 IndexScan(v)
 Leading((((u p) b) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>33 AND p.Score<48 AND p.CommentCount>13 AND p.CommentCount<39 AND u.DownVotes>77 AND u.DownVotes<849 AND v.CreationDate>'2010-09-08 15:21:53'::timestamp AND v.CreationDate<'2014-06-25 14:48:25'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<10 AND b.Date>'2012-08-30 23:04:37'::timestamp AND b.Date<'2013-04-28 01:22:23'::timestamp;

