/*+ MergeJoin(b u p v)
 MergeJoin(u p v)
 MergeJoin(p v)
 IndexScan(b)
 SeqScan(u)
 SeqScan(p)
 SeqScan(v)
 Leading((b (u (p v)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>0 AND p.Score<37 AND p.CommentCount>0 AND p.CommentCount<9 AND u.DownVotes>116 AND u.DownVotes<260 AND v.CreationDate>'2009-03-14 02:08:38'::timestamp AND v.CreationDate<'2011-09-02 18:51:21'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<9 AND b.Date>'2011-03-06 13:00:38'::timestamp AND b.Date<'2014-03-24 16:41:50'::timestamp;

