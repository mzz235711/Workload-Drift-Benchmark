/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-3 AND p.Score<111 AND p.CommentCount>7 AND p.CommentCount<18 AND u.DownVotes>47 AND u.DownVotes<1681 AND v.CreationDate>'2009-06-10 04:35:04'::timestamp AND v.CreationDate<'2011-12-18 07:50:17'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<9 AND b.Date>'2012-08-30 18:09:17'::timestamp AND b.Date<'2014-09-07 08:29:37'::timestamp;

