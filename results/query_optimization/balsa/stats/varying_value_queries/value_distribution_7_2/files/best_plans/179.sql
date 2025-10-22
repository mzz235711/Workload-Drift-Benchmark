/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-10 AND p.Score<119 AND p.CommentCount>7 AND p.CommentCount<19 AND u.DownVotes>350 AND u.DownVotes<1614 AND v.CreationDate>'2010-07-04 12:13:08'::timestamp AND v.CreationDate<'2013-08-19 23:27:41'::timestamp AND v.VoteTypeId>5 AND v.VoteTypeId<14 AND b.Date>'2010-08-28 05:27:17'::timestamp AND b.Date<'2011-05-09 11:43:10'::timestamp;

