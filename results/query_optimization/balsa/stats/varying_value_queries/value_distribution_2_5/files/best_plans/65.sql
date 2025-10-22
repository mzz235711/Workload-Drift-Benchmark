/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>2 AND p.Score<168 AND p.CommentCount>7 AND p.CommentCount<17 AND u.DownVotes>47 AND u.DownVotes<1686 AND v.CreationDate>'2011-12-28 13:30:14'::timestamp AND v.CreationDate<'2013-11-26 09:17:29'::timestamp AND v.VoteTypeId>5 AND v.VoteTypeId<9 AND b.Date>'2012-01-04 23:55:47'::timestamp AND b.Date<'2014-03-12 15:12:54'::timestamp;

