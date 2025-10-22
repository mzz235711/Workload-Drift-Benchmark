/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-12 AND p.Score<166 AND p.CommentCount>6 AND p.CommentCount<26 AND u.DownVotes>24 AND u.DownVotes<1070 AND v.CreationDate>'2013-08-12 22:02:52'::timestamp AND v.CreationDate<'2014-08-05 00:11:37'::timestamp AND v.VoteTypeId>10 AND v.VoteTypeId<14 AND b.Date>'2013-01-19 17:58:22'::timestamp AND b.Date<'2013-08-21 11:46:50'::timestamp;

