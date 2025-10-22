/*+ MergeJoin(b v p u)
 MergeJoin(v p u)
 MergeJoin(v p)
 IndexScan(b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 Leading((b ((v p) u))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-15 AND p.Score<158 AND p.CommentCount>18 AND p.CommentCount<21 AND u.DownVotes>632 AND u.DownVotes<904 AND v.CreationDate>'2009-04-17 03:32:34'::timestamp AND v.CreationDate<'2013-08-04 02:51:59'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<5 AND b.Date>'2012-08-10 01:46:59'::timestamp AND b.Date<'2012-10-01 18:50:30'::timestamp;

