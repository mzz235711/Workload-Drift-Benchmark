/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-18 AND p.Score<77 AND p.CommentCount>6 AND p.CommentCount<42 AND u.DownVotes>637 AND u.DownVotes<892 AND v.CreationDate>'2010-10-08 09:19:42'::timestamp AND v.CreationDate<'2013-01-19 00:58:40'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<8 AND b.Date>'2011-08-11 05:27:56'::timestamp AND b.Date<'2013-12-12 14:19:53'::timestamp;

