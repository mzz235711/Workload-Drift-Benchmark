/*+ MergeJoin(v p u b)
 MergeJoin(u b)
 MergeJoin(v p)
 SeqScan(v)
 SeqScan(p)
 IndexScan(u)
 SeqScan(b)
 Leading(((v p) (u b))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-2 AND p.Score<18 AND p.CommentCount>3 AND p.CommentCount<42 AND u.DownVotes>5 AND u.DownVotes<1659 AND v.CreationDate>'2010-12-10 22:45:28'::timestamp AND v.CreationDate<'2013-06-15 13:38:53'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<3 AND b.Date>'2010-12-06 07:37:18'::timestamp AND b.Date<'2011-03-18 13:22:46'::timestamp;

