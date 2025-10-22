/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>5 AND p.Score<7 AND p.CommentCount>5 AND p.CommentCount<42 AND u.DownVotes>316 AND u.DownVotes<797 AND v.CreationDate>'2010-04-19 09:02:27'::timestamp AND v.CreationDate<'2013-01-12 19:46:52'::timestamp AND v.VoteTypeId>9 AND v.VoteTypeId<12 AND b.Date>'2011-01-21 13:37:47'::timestamp AND b.Date<'2014-05-18 11:57:35'::timestamp;

