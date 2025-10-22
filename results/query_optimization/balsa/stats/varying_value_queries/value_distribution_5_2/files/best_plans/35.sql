/*+ NestLoop(u p b v)
 NestLoop(u p b)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(b)
 IndexScan(v)
 Leading((((u p) b) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>80 AND p.Score<162 AND p.CommentCount>7 AND p.CommentCount<33 AND u.DownVotes>13 AND u.DownVotes<1397 AND v.CreationDate>'2013-07-04 00:23:00'::timestamp AND v.CreationDate<'2013-12-20 13:52:04'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<8 AND b.Date>'2011-01-23 23:15:53'::timestamp AND b.Date<'2012-05-07 10:34:36'::timestamp;

