/*+ NestLoop(u v p b)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(u)
 SeqScan(v)
 SeqScan(p)
 IndexScan(b)
 Leading(((u (v p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>49 AND p.Score<84 AND p.CommentCount>3 AND p.CommentCount<26 AND u.DownVotes>727 AND u.DownVotes<1111 AND v.CreationDate>'2011-06-26 18:38:15'::timestamp AND v.CreationDate<'2014-07-30 13:23:07'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<9 AND b.Date>'2013-12-03 07:49:05'::timestamp AND b.Date<'2014-08-29 06:28:42'::timestamp;

