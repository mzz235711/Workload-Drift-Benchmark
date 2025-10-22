/*+ MergeJoin(b v p u)
 MergeJoin(v p u)
 MergeJoin(v p)
 IndexScan(b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 Leading((b ((v p) u))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>24 AND p.Score<50 AND p.CommentCount>13 AND p.CommentCount<40 AND u.DownVotes>770 AND u.DownVotes<1731 AND v.CreationDate>'2010-12-14 06:36:28'::timestamp AND v.CreationDate<'2013-12-14 22:03:01'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<8 AND b.Date>'2012-10-16 14:26:50'::timestamp AND b.Date<'2013-12-23 07:31:19'::timestamp;

