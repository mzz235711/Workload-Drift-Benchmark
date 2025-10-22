/*+ MergeJoin(b p v u)
 MergeJoin(p v u)
 MergeJoin(p v)
 IndexScan(b)
 IndexScan(p)
 SeqScan(v)
 SeqScan(u)
 Leading((b ((p v) u))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-11 AND p.Score<117 AND p.CommentCount>12 AND p.CommentCount<15 AND u.DownVotes>79 AND u.DownVotes<1038 AND v.CreationDate>'2013-11-15 10:20:56'::timestamp AND v.CreationDate<'2014-05-06 11:32:07'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<4 AND b.Date>'2011-11-14 17:33:07'::timestamp AND b.Date<'2012-05-28 02:36:47'::timestamp;

