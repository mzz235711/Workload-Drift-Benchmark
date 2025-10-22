/*+ NestLoop(u p b v)
 MergeJoin(u p b)
 MergeJoin(u p)
 SeqScan(u)
 SeqScan(p)
 SeqScan(b)
 IndexScan(v)
 Leading((((u p) b) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>12 AND p.Score<156 AND p.CommentCount>8 AND p.CommentCount<42 AND u.DownVotes>346 AND u.DownVotes<617 AND v.CreationDate>'2010-01-22 23:53:13'::timestamp AND v.CreationDate<'2013-10-12 15:15:54'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<14 AND b.Date>'2011-06-16 06:06:00'::timestamp AND b.Date<'2014-06-11 17:29:56'::timestamp;

