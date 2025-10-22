/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>19 AND p.Score<53 AND p.CommentCount>13 AND p.CommentCount<18 AND u.DownVotes>627 AND u.DownVotes<1592 AND v.CreationDate>'2013-03-29 02:38:11'::timestamp AND v.CreationDate<'2014-03-10 13:22:37'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<14 AND b.Date>'2012-01-17 00:46:54'::timestamp AND b.Date<'2014-06-07 21:05:08'::timestamp;

