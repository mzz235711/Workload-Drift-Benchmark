/*+ MergeJoin(b v p u)
 MergeJoin(v p u)
 MergeJoin(p u)
 IndexScan(b)
 SeqScan(v)
 IndexScan(p)
 SeqScan(u)
 Leading((b (v (p u)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-16 AND p.Score<37 AND p.CommentCount>3 AND p.CommentCount<13 AND u.DownVotes>548 AND u.DownVotes<1048 AND v.CreationDate>'2010-09-09 02:54:48'::timestamp AND v.CreationDate<'2013-03-08 01:27:06'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<15 AND b.Date>'2011-09-21 11:24:23'::timestamp AND b.Date<'2013-05-16 20:27:10'::timestamp;

