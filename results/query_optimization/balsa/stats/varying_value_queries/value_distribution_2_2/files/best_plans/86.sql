/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-17 AND p.Score<175 AND p.CommentCount>4 AND p.CommentCount<6 AND u.DownVotes>738 AND u.DownVotes<950 AND v.CreationDate>'2010-03-08 07:38:35'::timestamp AND v.CreationDate<'2011-11-28 17:28:40'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<12 AND b.Date>'2012-12-17 23:03:35'::timestamp AND b.Date<'2014-05-18 01:08:13'::timestamp;

