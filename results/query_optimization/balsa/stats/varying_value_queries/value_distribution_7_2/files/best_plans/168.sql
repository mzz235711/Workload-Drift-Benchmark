/*+ MergeJoin(b v p u)
 MergeJoin(v p u)
 MergeJoin(v p)
 IndexScan(b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 Leading((b ((v p) u))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>2 AND p.Score<163 AND p.CommentCount>16 AND p.CommentCount<25 AND u.DownVotes>695 AND u.DownVotes<1499 AND v.CreationDate>'2009-09-18 06:29:02'::timestamp AND v.CreationDate<'2013-03-10 18:59:53'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<13 AND b.Date>'2012-08-29 09:07:40'::timestamp AND b.Date<'2014-05-19 21:16:47'::timestamp;

