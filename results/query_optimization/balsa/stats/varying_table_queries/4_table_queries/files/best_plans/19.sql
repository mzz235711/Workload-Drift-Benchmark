/*+ HashJoin(b u p v)
 MergeJoin(u p v)
 HashJoin(p v)
 SeqScan(b)
 SeqScan(u)
 SeqScan(p)
 SeqScan(v)
 Leading((b (u (p v)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND v.BountyAmount>=0 AND v.BountyAmount<=50 AND p.PostTypeId=1 AND p.AnswerCount<=4 AND p.FavoriteCount>=0 AND p.FavoriteCount<=4 AND p.CreationDate>='2010-08-02 21:50:27'::timestamp AND p.CreationDate<='2014-09-03 18:33:34'::timestamp AND b.Date>='2010-07-21 09:53:12'::timestamp AND u.UpVotes>=0;

