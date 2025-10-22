/*+ MergeJoin(b v p u)
 MergeJoin(v p u)
 MergeJoin(p u)
 IndexScan(b)
 SeqScan(v)
 IndexScan(p)
 SeqScan(u)
 Leading((b (v (p u)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-1 AND p.Score<136 AND p.CommentCount>0 AND p.CommentCount<44 AND u.DownVotes>732 AND u.DownVotes<1687 AND v.CreationDate>'2009-03-19 21:53:28'::timestamp AND v.CreationDate<'2013-05-11 14:54:04'::timestamp AND v.VoteTypeId>5 AND v.VoteTypeId<13 AND b.Date>'2011-04-14 13:26:27'::timestamp AND b.Date<'2011-07-07 06:38:32'::timestamp;

