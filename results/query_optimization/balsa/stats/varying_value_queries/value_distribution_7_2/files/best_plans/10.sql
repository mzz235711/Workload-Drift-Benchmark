/*+ MergeJoin(v p u b)
 MergeJoin(u b)
 MergeJoin(v p)
 SeqScan(v)
 SeqScan(p)
 IndexScan(u)
 SeqScan(b)
 Leading(((v p) (u b))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>59 AND p.Score<176 AND p.CommentCount>5 AND p.CommentCount<12 AND u.DownVotes>282 AND u.DownVotes<1686 AND v.CreationDate>'2010-11-27 16:12:25'::timestamp AND v.CreationDate<'2013-07-07 07:32:49'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<12 AND b.Date>'2010-10-17 00:30:06'::timestamp AND b.Date<'2010-12-02 23:30:00'::timestamp;

