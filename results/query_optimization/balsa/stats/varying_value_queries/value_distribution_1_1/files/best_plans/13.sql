/*+ MergeJoin(b v p u)
 MergeJoin(v p u)
 MergeJoin(v p)
 IndexScan(b)
 SeqScan(v)
 IndexScan(p)
 SeqScan(u)
 Leading((b ((v p) u))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>64 AND p.Score<128 AND p.CommentCount>8 AND p.CommentCount<19 AND u.DownVotes>152 AND u.DownVotes<1847 AND v.CreationDate>'2010-07-12 12:52:31'::timestamp AND v.CreationDate<'2012-09-11 23:51:38'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<4 AND b.Date>'2012-07-23 21:07:36'::timestamp AND b.Date<'2013-10-09 14:29:13'::timestamp;

