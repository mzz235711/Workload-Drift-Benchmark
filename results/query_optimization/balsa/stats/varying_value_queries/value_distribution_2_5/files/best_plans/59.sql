/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>22 AND p.Score<70 AND p.CommentCount>1 AND p.CommentCount<30 AND u.DownVotes>69 AND u.DownVotes<1587 AND v.CreationDate>'2012-01-29 16:20:50'::timestamp AND v.CreationDate<'2012-09-10 17:58:43'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<9 AND b.Date>'2011-09-05 17:10:57'::timestamp AND b.Date<'2012-08-03 15:02:11'::timestamp;

