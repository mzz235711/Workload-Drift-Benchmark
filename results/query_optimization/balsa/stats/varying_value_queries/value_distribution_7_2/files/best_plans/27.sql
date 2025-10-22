/*+ MergeJoin(v p u b)
 MergeJoin(u b)
 MergeJoin(v p)
 SeqScan(v)
 SeqScan(p)
 IndexScan(u)
 SeqScan(b)
 Leading(((v p) (u b))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-14 AND p.Score<136 AND p.CommentCount>5 AND p.CommentCount<36 AND u.DownVotes>44 AND u.DownVotes<1806 AND v.CreationDate>'2011-07-06 05:03:17'::timestamp AND v.CreationDate<'2014-02-04 12:36:37'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<4 AND b.Date>'2011-12-09 19:25:07'::timestamp AND b.Date<'2013-10-20 11:14:28'::timestamp;

